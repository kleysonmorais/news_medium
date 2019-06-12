import 'dart:async';
import 'dart:convert';

class NewsApi {
  Future<List> loadNews() async {
    String json = "[  \n" +
        "   {  \n" +
        "      \"id\":\"23658\",\n" +
        "      \"tittle\":\"Tite recebe convocados nesta segunda e tem 27 dias de preparação para estreia\",\n" +
        "      \"description\":\"As ausências certas são de Casemiro e Marcelo, do Real Madrid, e Roberto Firmino, do Liverpool, que disputarão a final da Liga dos Campeões\",\n" +
        "      \"url_img\":\"http://104.131.18.84/notice/uploads/news/1fd055d2a109fe18af4414bf87293575.jpg\",\n" +
        "      \"link\":\"https://www.otempo.com.br/superfc/tite-recebe-convocados-nesta-segunda-e-tem-27-dias-de-prepara%C3%A7%C3%A3o-para-estreia-1.1789078\",\n" +
        "      \"origin\":\"Otempo.com.br\",\n" +
        "      \"category\":\"sports\",\n" +
        "      \"date\":\"2018-05-21 11:37:50\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23670\",\n" +
        "      \"tittle\":\"Técnico na bronca, chance incrível perdida... e Dourado ainda festeja gol\",\n" +
        "      \"description\":\"Web se diverte com memes do atacante do Flamengo comemorando gol que não valeu, enquanto mais um treinador perde o emprego no Brasileirão\",\n" +
        "      \"url_img\":\"http://104.131.18.84/notice/uploads/news/33098e87f8fb4ae14066740218f8389b.jpg\",\n" +
        "      \"link\":\"https://globoesporte.globo.com/futebol/brasileirao-serie-a/noticia/tecnico-na-bronca-chance-incrivel-perdida-e-dourado-ainda-festeja-gol.ghtml\",\n" +
        "      \"origin\":\"Globo\",\n" +
        "      \"category\":\"sports\",\n" +
        "      \"date\":\"2018-05-21 11:03:24\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23671\",\n" +
        "      \"tittle\":\"Corinthians define cronograma de retornos e poupados para jogos contra Millonarios e Internacional\",\n" +
        "      \"description\":\"O Corinthians já definiu o cronograma em relação a utilização de titulares e reservas nas duas partidas da semana - recebe Millionarios-COL, pela Libertadores, e viaja para enfrentar o Internacional.\",\n" +
        "      \"url_img\":\"http://104.131.18.84/notice/uploads/news/50297d820c48830dcfc5bd7dcfcfdc88.jpg\",\n" +
        "      \"link\":\"https://www.meutimao.com.br/noticias-do-corinthians/288853/corinthians-define-cronograma-de-retornos-e-poupados-para-jogos-contra-millonarios-e-internacional\",\n" +
        "      \"origin\":\"Meutimao.com.br\",\n" +
        "      \"category\":\"sports\",\n" +
        "      \"date\":\"2018-05-21 10:55:02\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23673\",\n" +
        "      \"tittle\":\"Adversária do Brasil na preparação para a Copa, Croácia é convocada\",\n" +
        "      \"description\":\"A Croácia é mais uma seleção a anunciar a sua convocação final para a Copa do Mundo nessa segunda-feira, ou quase isso. Após apresentar uma li\",\n" +
        "      \"url_img\":\"http://104.131.18.84/notice/uploads/news/7ce10963d69f25f1b9dc4dbf79b03d1c.jpg\",\n" +
        "      \"link\":\"https://www.terra.com.br/esportes/croacia/adversaria-do-brasil-na-preparacao-para-a-copa-croacia-e-convocada,a7e2dfc588c35b45fde0db441a80ad81y2a1fk3m.html\",\n" +
        "      \"origin\":\"Terra.com.br\",\n" +
        "      \"category\":\"sports\",\n" +
        "      \"date\":\"2018-05-21 10:40:48\"\n" +
        "   }\n" +
        "]";

    return jsonDecode(json);
  }
}
