package technique;

public class Test {

    /**
     * @param chiffre
     * @return
     */
    public static int sommeChiffre( int chiffre ) {

        int result = 0;
        int taille = String.valueOf( chiffre ).length();

        for ( int i = 0; i < taille; i++ ) {
            result += chiffre % 10;
            chiffre = chiffre / 10;
        }

        return result;
    }

    public static int sumDigits( int i ) {
        return i == 0 ? 0 : i % 10 + sumDigits( i / 10 );
    }

    public static void main( String[] args ) {
        // TODO Auto-generated method stub

        String line = "3429";

        int result = 0;

        int n = Integer.valueOf( line );

        // result = sommeChiffre( n );
        // result = sommeChiffre( result );

        result = sumDigits( n );
        result = sumDigits( result );

        /*
         * for ( i = 0; i < line.length(); i++ ) { result += n % 10; n = n / 10;
         * }
         * 
         * line = String.valueOf( result ); n = result; result = 0;
         * 
         * for ( i = 0; i < line.length(); i++ ) { result += n % 10; n = n / 10;
         * }
         */
        System.out.println( result );

    }

}
