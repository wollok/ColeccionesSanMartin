# ColeccionesSanMartin
 
[![Build Status](https://travis-ci.org/wollok/ColeccionesSanMartin.svg?branch=master)](https://travis-ci.org/wollok/ColeccionesSanMartin)

Ejercicio con colecciones

## La batalla de San Lorenzo

San Martín, que viajó desde el pasado y no recuerda el resultado de sus batallas, se encuentra preparando un programa para simular la batalla de San Lorenzo. 


Algunos de los personajes históricos son:
- San Martín, de quien se conoce la cantidad de caballos que tiene a su disposición, y que necesita armar su ejército libertador. 
- Cabral, un temerario sargento dispuesto a todo. 
- Luis Beltrán, un fraile con deseos de libertad, experto en artillería.
- Remedios de Escalada, la esposa de San Martín y a la que no le gustan las batallas. 

## Primera parte
Definir los objetos que sean necesarios para realizar las siguientes tareas y hacer las pruebas correspondientes. 
- San Martín quiere armar su ejército, pero inicialmente no cuenta con nadie. 
- San Martín recluta al sargento cabral para su ejército.
- Luego, lo recluta también a Luis Beltrán. 
- También recluta a Remedios para su ejército.
- San Martín se da cuenta y echa a Remedios del ejército. 
- Averiguar si cabral forma parte del ejército.
- Averiguar si el Super Agente 86 forma parte del ejército.
- Saber si hay suficientes caballos para las tropas (se considera un caballo para cada uno, incluído el mismo San Martín).
- Un mal día, San Martín echa a todos los integrantes de su ejército

Mientras tanto, se sabe que el general realista acecha. Se conoce cuántas tropas tiene y su coeficiente de poder. Se dice que el poderío de la tropa realista es igual a la multiplicación entre la cantidad de tropas y este coeficiente. 

Utilizando esta información, Se pide:
- Saber si San Martin tiene un ejército mas numeroso que el del capitán realista.
- Saber si el capitán realista le da miedo a San Martín. Un adversario le da miedo si es temerario (tiene más de 100 tropas) o si el ejército de San Martín está vacío.
- San Martín decide atacar al capitán realista. Para ello, envía a uno de los soldados de su ejército a atacar. El general realista recibe un daño igual al 1% del poder del soldado, que se descuenta de su coeficiente de poder y pierde tantas tropas como poder tenga el soldado atacante. 


## Segunda parte

Como San Martín es un líder muy respetado, cuando visita una ciudad ésta le ofrece diversas facilidades para mejorar su ejército, así como la posibilidad de reclutar a todos los habitantes que están en condiciones de combatir.

En la ciudad de San Lorenzo se encuentran:
- Cabral: nuestro viejo conocido, quien al entrenarse, aumenta en 1 su poderío, sin poder pasar de 50. Cabral no puede desertar.
- Pepita: paloma con poderes mágicos, criada para pelear contra los realistas. Es muy fuerte pero no puede ser entrenada y su poder es fijo. Es bastante temerosa, en caso de haber una deserción, desaparece apenas puede.
- Gladys: de Tucumán, se encontraba de vacaciones. No puede combatir, sólo baila de noche y día.

Plantear la secuencia de prueba y realizar los métodos necesarios: 
San Martín visita San Lorenzo, por lo que:
- Recluta a todos los habitantes en condiciones de pelear. 
- Hace un día de entrenamiento, lo que depende de cómo sea la ciudad. En San Lorenzo, se entrena una vez a todos los soldados del ejército. 
- San Martín puede pedirle a una ciudad que ayude económicamente a su campaña. La ciudad de San Lorenzo tiene muchos caballos y le entrega uno por cada uno de sus habitantes no combatientes. 
- Saber si alguien del ejército de San Martín altera la tranquilidad del descanso nocturno de sus tropas, por ejemplo, bailando. 
- Saber si San Martín va a ganar la batalla de San Lorenzo al capitán realista: la gana si su ejército es más numeroso que el del rival, el rival no le da miedo y su poderío es mayor al poder del rival.
- San Martín visita Mendoza y realiza su actividad habitual (inventar cómo es Mendoza)
- Simular una deserción masiva del ejército.


## Tercera parte

San Martín, que con su sable corvo no se deja amedrentar por nimiedades como la exactitud histórica, viaja en el tiempo para defender Buenos Aires de los ingleses.

Los invasores ingleses están decididos a atacar y desean anexar buenos aires a la corona británica. A diferencia de sus pares españoles, están organizados bajo el mando del Teniente General John Whitelocke, con un conjunto de tropas armadas. 

La primera tarea del invasor es es otorgarle armas a su ejército, para lo cual cuenta con una armería. De cada arma se puede calcular su poder, que es numérico.

Entre las tropas, por ejemplo, se encuentra:
- David Bowie: Se lleva las 3 armas disponibles más poderosas.
- Keith Richards: de reconocida habilidad con las armas, toma la mejor arma disponible.
- John James Onslow, en cambio, toma la última que encuentra.

Al invadir la ciudad, las tropas inglesas atacan una vez con cada una a un soldado de su enemigo, causándole daño de acuerdo al poder del arma. 

San Martín, mientras tanto organiza la defensa de la ciudad, de manera de minimizar el daño enemigo. Para ello pasa por Mendoza y consigue que Gladys, Cabral, Beltrán y Pueyrredón se sumen a su ejército. 
La defensa que hacen los soldados se caracteriza por:
- Gladys, que no puede combatir en la forma tradicional, cuenta con de aceite, una olla y un fuego encendido. El daño que recibe es inversamente proporcional a la cantidad de aceite hirviendo que le queda en la olla. 
- Cabral, no recibe daño (ya que necesita llegar en óptimas condiciones a San Lorenzo). 
- Pepita, por sus tendencias antibelicistas nunca está en la posición adecuada, siempre recibe el doble de daño.
- Pueyrredon, recibe un daño igual al 10% del poder del atacante.

A su vez, hay algunos cambios en la forma en que los soldados calculan su poder.
- Ahora, Gladys puede atacar, y su potencia se calcula a partir de la cantidad de litros de aceite que tiene.
- Pueyrredón es un especialista en batallas difíciles, con lo que su poder depende de muchas variables.

La secuencia principal que se quiere representar es que habiéndose armado el ejército invasor y estando preparado San Martín en su visita a Mendoza, el comandante inglés invada con su ejército y luego San Martín lo ataque. Lo que se quiere ver es quién gana.

**Importante:** Probar la solución mediante tests. 

__Nota:__ hay algunas tareas cuya forma de realizarse no está explícitamente determinada. En la medida que se detecte que deben estar, definirlas con creatividad. Por ejemplo: cuando San Martín ataca, cómo recibe daño el ejército inglés? igual que el capitán realista? cómo queda Keith Richards?
