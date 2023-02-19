# Настройка мониторинга

## Настроить дашборд в `grafana` с 4-мя графиками:
- память;
- процессор;
- диск;
- сеть.

Для выполнения задания, был написан [Vagrantfile](https://github.com/shulgazavr/prmths/blob/main/Vagrantfile), создающий виртуальную машину и устанавлявающий на неё сервер `Prometheus`, `Node Exporter` и `Grafana`.

Для доступа к `Grafana`, в виртуальную машину прокидывается порт `3000`.

Для визуализации данных использовался слегка модифицированный [дашборд](https://grafana.com/grafana/dashboards/11074).

Результат:
![image](https://user-images.githubusercontent.com/105816449/219906759-e973de7f-ceaa-4436-8e66-bd2ccdb899c6.png)
