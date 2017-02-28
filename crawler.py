import re
class Crawler(object):
	def __init__(self, html):
		self.html = html
		
	def extraer(self):
		patron = re.compile(r"^\s*setHash\s*\(\s*['\"]([0-9a-f]*)['\"]\s*,\s*['\"]([0-9]*)['\"]\s*\)\s*;", re.MULTILINE)
		matcher = patron.search(self.html)
		return matcher.group(1), matcher.group(2)		