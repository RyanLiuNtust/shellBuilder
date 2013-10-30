import os
import re
import errno
import Image

def makeNestedFile(dirPath):
	nestedFile = ['test_p','test_n','train_p','train_n']
	for name in nestedFile:
		nestedName = os.path.join(dirPath, name)
		try:
			if not os.path.isdir(nestedName):
				os.makedirs(nestedName)
		except OSError as exception:
			raise

def makeDirExist(dirPath):
	print dirPath + '............'
	try:
		if os.path.isdir(dirPath):
			makeNestedFile(dirPath)
		else:
			os.makedirs(dirPath)
			makeNestedFile(dirPath)
	except OSError as exception:
		if exception.errno != errno.EEXIST:
			raise

def cpImg(srcFile, imgName, dstFile, model):
	nestedFile = ['test_p','test_n','train_p','train_n']
	for name in imgName:
		index = re.findall(r'\d+', name)
		src  = os.path.join(srcFile, name)
		img  = Image.open( os.path.join(os.path.dirname(__file__), src))
		dst  = ''
		nestedFilename = ''
		print index[1]
		if (int(index[1]) - 1)/3 == model:
			if(srcFile == './database/'):
				nestedFilename = os.path.join(dstFile, nestedFile[2])
			else:
				nestedFilename = os.path.join(dstFile, nestedFile[0])
		else:
			if(srcFile == './database/'):
				nestedFilename = os.path.join(dstFile, nestedFile[3])
			else:
				nestedFilename = os.path.join(dstFile, nestedFile[1])
		dst  = os.path.join(nestedFilename, name)
		print 'dst=' + dst
		img.save(str(dst),format='JPEG')

def getFilename(srcFile, extension):
	return [f for f in os.listdir(srcFile) if f.endswith(extension)]


ext = 'jpg'
for model in range(5):
	path = os.path.join(os.path.dirname(__file__), str(model))
	makeDirExist(path)
	db = getFilename('./database/', ext)
	test = getFilename('./test/', ext)
	cpImg('./database/', db, path, model)
	cpImg('./test/', test, path, model)

