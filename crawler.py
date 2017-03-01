import re
class Crawler(object):
	def __init__(self):
		pass

	def extraer(self, html):
		patron = re.compile(r"^\s*setHash\s*\(\s*['\"]([0-9a-f]*)['\"]\s*,\s*['\"]([0-9]*)['\"]\s*\)\s*;", re.MULTILINE)
		matcher = patron.search(html)
		return matcher.group(1), matcher.group(2)		