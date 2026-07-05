#import "@local/wired-ieee:1.0.0": ieee

#show: ieee.with(
  title: [Un Sistema de Composición Tipográfica para Desentrañar el Proceso de Escritura Científica],
  abstract: [
    El proceso de escritura científica a menudo se enreda con las complejidades de la composición tipográfica, lo que lleva a la frustración y la pérdida de tiempo para los investigadores. En este artículo, presentamos Typst, un nuevo sistema de composición tipográfica diseñado específicamente para la escritura científica. Typst desentraña el proceso de composición, permitiendo a los investigadores redactar artículos más rápido. En una serie de experimentos, demostramos que Typst ofrece varias ventajas, que incluyen una creación de documentos más rápida, una sintaxis simplificada y una mayor facilidad de uso.
  ],
  authors: (
    (
      name: "Martin Haug",
      department: [Cofundador],
      organization: [Typst GmbH],
      location: [Berlín, Alemania],
      email: "haug@typst.app",
    ),
    (
      name: "Hugo Coto Flórez",
      department: [Template expansor],
      location: [Santiago de Compostela],
      email: "hugo@hugocoto.com",
    ),
    (
      name: "Laurenz Mädje",
      department: [Cofundador],
      organization: [Typst GmbH],
      location: [Berlín, Alemania],
      email: "maedje@typst.app",
    ),
  ),
  index-terms: ("Escritura científica", "Composición tipográfica", "Creación de documentos", "Sintaxis"),
  aside: [Template: ieee-charged modified by Hugo Coto. You can find the repo at
    #link("https://github.com/hugoocoto/wired-ieee", "github.com/hugoocoto/wired-ieee")],
  bibliography: bibliography("refs.bib"),
  lang: "es",
  i18n: (
    // this dict is not needed, but it can be used to override defaults or add translations to languages that are not supported.
    es: (
      abstract: "Resumen",
      index: "Palabras clave",
      table: "TABLA",
      fig: "Fig.",
      references: "Referencias",
    ),
  ),
)

= Introducción
La escritura científica es una parte crucial del proceso de investigación, permitiendo a los investigadores compartir sus hallazgos con la comunidad científica en general. Sin embargo, el proceso de composición tipográfica de documentos científicos a menudo puede ser un asunto frustrante y que consume mucho tiempo, particularmente cuando se utilizan herramientas obsoletas como LaTeX. A pesar de tener más de 30 años, sigue siendo una opción popular para la escritura científica debido a su potencia y flexibilidad. Sin embargo, también conlleva una curva de aprendizaje pronunciada, una sintaxis compleja y largos tiempos de compilación, lo que lleva a la frustración y desesperación de muchos investigadores @netwok2020 @netwok2022.

```c
int main() {
  printf("¡Hola, Mundo!\n");
  return 0;
}
```

== Resumen del artículo
En este artículo presentamos Typst, un nuevo sistema de composición tipográfica diseñado para agilizar el proceso de escritura científica y proporcionar a los investigadores una alternativa rápida, eficiente y fácil de usar en comparación con los sistemas existentes. Nuestro objetivo es sacudir el status quo y ofrecer a los investigadores una mejor manera de abordar la escritura científica.

Al aprovechar algoritmos avanzados y una interfaz fácil de usar, Typst ofrece varias ventajas sobre los sistemas de composición tipográfica existentes, incluida una creación de documentos más rápida, una sintaxis simplificada y una mayor facilidad de uso.

Para demostrar el potencial de Typst, llevamos a cabo una serie de experimentos comparándolo con otros sistemas de composición tipográfica populares, incluido LaTeX. Nuestros hallazgos sugieren que Typst ofrece varios beneficios para la escritura científica, particularmente para los usuarios novatos que pueden tener dificultades con las complejidades de LaTeX. Además, demostramos que Typst ofrece funciones avanzadas para usuarios experimentados, lo que permite una mayor personalización y flexibilidad en la creación de documentos.

En general, creemos que Typst representa un importante paso adelante en el campo de la escritura científica y la composición tipográfica, proporcionando a los investigadores una herramienta valiosa para agilizar su flujo de trabajo y centrarse en lo que realmente importa: su investigación. En las siguientes secciones, presentaremos Typst con más detalle y proporcionaremos evidencia de su superioridad sobre otros sistemas de composición tipográfica en una variedad de escenarios.

= Métodos <sec:methods>
#lorem(45)

$ a + b = gamma $ <eq:gamma>

#lorem(80)

#figure(
  placement: none,
  circle(radius: 15pt),
  caption: [Un círculo que representa al Sol.],
) <fig:sun>

En la @fig:sun se puede ver una representación común del Sol, que es una estrella ubicada en el centro del sistema solar.

#lorem(120)

#figure(
  caption: [Los planetas del sistema solar y su distancia media al Sol],
  placement: top,
  table(
    // El estilo de la tabla no es obligatorio para IEEE. Siéntete libre de ajustar esta
    // configuración y potencialmente moverla a una regla 'set'.
    columns: (6em, auto),
    align: (left, right),
    inset: (x: 8pt, y: 4pt),
    stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0 { rgb("#efefef") },

    table.header[Planeta][Distancia (millones de km)],
    [Mercurio], [57.9],
    [Venus], [108.2],
    [Tierra], [149.6],
    [Marte], [227.9],
    [Júpiter], [778.6],
    [Saturno], [1,433.5],
    [Urano], [2,872.5],
    [Neptuno], [4,495.1],
  ),
) <tab:planets>

En la @tab:planets, puedes ver los planetas del sistema solar y su distancia media al Sol.
Las distancias se calcularon con la @eq:gamma que presentamos en la @sec:methods.

#lorem(240)

= Agradecimientos

#lorem(240)
