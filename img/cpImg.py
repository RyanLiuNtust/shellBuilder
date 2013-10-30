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
# image type #sample_#person
# training has one pic per person
# test has three pic per person
def cpImg(srcFile, imgName, dstFile, sample, person,  ext):
	nestedFile = ['test_p','test_n','train_p','train_n']
	if(ext == 'jpg'):
		ext = 'JPEG'
	for name in imgName:
		index	= re.findall(r'\d+', name)
		src  = os.path.join(srcFile, name)
		img  = Image.open( os.path.join(os.getcwd(), src))
		dst  = ''
		nestedFilename = ''
		if(srcFile == './database/'):
			if (int(index[0]) != sample):
				if int(index[1]) == person:
					nestedFilename = os.path.join(dstFile, nestedFile[2])
				else:
					nestedFilename = os.path.join(dstFile, nestedFile[3])
				dst  = os.path.join(nestedFilename, name)
				print dst
				img.save(str(dst),format=ext)
		else:
			if (int(index[0]) == sample):
				if (int(index[1])-1)/3 == person:
					nestedFilename = os.path.join(dstFile, nestedFile[0])
				else:
					nestedFilename = os.path.join(dstFile, nestedFile[1])
				dst  = os.path.join(nestedFilename, name)
				print dst
				img.save(str(dst),format=ext)

def getFilename(srcFile, extension):
	return [f for f in os.listdir(srcFile) if f.endswith(extension)]


ext = 'bmp'
total_person_per_sample = 20
for model in range(120):
	sample = model/total_person_per_sample
	person = model - sample*total_person_per_sample
	path = os.path.join(os.getcwd(), str(sample)+'_'+str(person))
	makeDirExist(path)
	db   = getFilename('./database/', ext)
	test = getFilename('./test/', ext)
	cpImg('./database/', db, path, sample, person, ext)
	cpImg('./test/', test, path, sample, person, ext)

