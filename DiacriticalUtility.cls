public class DiacriticalUtility {

	private static Map<String,String> DIACRITICAL_MAP = new Map<String,String>
	{'À'=>'A','Á'=>'A','Â'=>'A','Ã'=>'A','Ä'=>'A','Å'=>'A',
	'Æ'=>'A','Ç'=>'C','È'=>'E','É'=>'E','Ê'=>'E',
	'Ë'=>'E','Ì'=>'I','Í'=>'I','Î'=>'I','Ï'=>'I','Ð'=>'E',
	'Ñ'=>'N','Ò'=>'O','Ó'=>'O','Ô'=>'O','Õ'=>'O','Ö'=>'O',
	'Ø'=>'O','Ù'=>'U','Ú'=>'U','Û'=>'U','Ü'=>'U','Ý'=>'Y',
	'Þ'=>'p','ß'=>'s','à'=>'a','á'=>'a','â'=>'a','ã'=>'a',
	'ä'=>'a','å'=>'a','æ'=>'a','ç'=>'c','è'=>'e','é'=>'e',
	'ê'=>'e','ë'=>'e','ì'=>'i','í'=>'i','î'=>'i','ï'=>'i',
	'ð'=>'e','ñ'=>'n','ò'=>'o','ó'=>'o','ô'=>'o','õ'=>'o',
	'ö'=>'o','ø'=>'o','ù'=>'u','ú'=>'u','û'=>'u','ü'=>'u',
	'ý'=>'y','þ'=>'p','ÿ'=>'y','ﬆ'=>'st','ﬅ'=>'ft',
	'ﬄ'=>'ffl','ﬃ'=>'ffi','ﬂ'=>'fl','ﬁ'=>'fi','ﬀ'=>'ff'};

	public static String toNonDiacritical(String stringToConvert){
		List<String> splitStringList = stringToConvert.split('');
		
		for( String character : splitStringList ){
			if( !character.containsWhitespace() && DIACRITICAL_MAP.containsKey(character) ){
				stringToConvert = stringToConvert.replaceAll(character, DIACRITICAL_MAP.get(character));
			}
		}

		return stringToConvert;
	}

	public static Boolean containsDiacritical(String stringToCheck){
		List<String> splitStringList = stringToCheck.split('');

		for( String character : splitStringList ){
			if( !character.containsWhitespace() && DIACRITICAL_MAP.containsKey(character) ){
				return true;
			}
		}

		return false;
	}
}