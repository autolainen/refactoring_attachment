﻿/// Библиотека моделей данныx приложения OpenAgent
///
/// Реализация моделей описаных https://www.lucidchart.com/documents/view/3a8aa3ae-0b1b-4ec9-9c6a-c8cea932f785/0?shared=true
///
/// Модели данных приложения OpenAgent:
/// * [Account] - Модель данных Аккаунт
/// * [Address] - Модель данных Адрес
/// * [Agent] - Модель данных Агент
/// * [Announcement] - Модель данных Новость для внешнего агента
/// * [Authority] - Модель данных Доверенность
/// * [Attachment] - Модель данных Вложение
/// * [Attribute] - Модель данных Атрибут
/// * [BillingItem] - Модель данных Позиция биллинга
/// * [CanDo] - Модель данных Доступный вид работ
/// * [CatalogItem] - Модель данных Позиции каталога (товаров/услуг)
/// * [CatalogStructure] - Модель данных Структура каталога (товаров/услуг)
/// * [Cemetery] - Модель данных Кладбище
/// * [Client] - Модель данных Клиент
/// * [CoffinParams] - Модель данных Параметры гроба
/// * [Comment] - Модель данных Комментарий
/// * [Contractor] - Модель данных Подрядчик (организация)
/// * [ContractorWorker] - Модель данных Исполнитель Подрядчика, расширяет функционал модели Пользователь
/// * [ContractorManager] -  модель данных Менеджер Подрядчика, расширяет функционал модели Пользователь
/// * [DadataAddress] - Модель данных Адрес в формате Dadata
/// * [DateTimePeriod] - Модель периода даты-времени
/// * [Deceased] - Модель данных Усопший
/// * [Detachment] - Модель данных Заказ-Наряд
/// * [DeviceToken] - Модель данных Токен (идентификатор устройства)
/// * [Ekam] - Модель данных Данные электронной кассы
/// * [Fee] - Модель данных Комиссия
/// * [FcmEvent] - Модель данных FCM событие
/// * [Item] - Модель данных Позиция Заказ-Наряда
/// * [Order] - Модель данных Заказа
/// * [OrderBurial] - Модель данных Заказа на захоронение, расширяет функционал модели Заказа
/// * [OrderSubburial] - Модель данных Заказа на подзахоронение, расширяет функционал модели Заказа
/// * [OrderCremation] - Модель данных Заказа на кремацию, расширяет функционал модели Заказа
/// * [Package] - Модель данных Пакет товаров/услуг
/// * [PackageGroup] - Группа пакетов
/// * [Passport] - Модель данных Паспортные данные
/// * [Performer] - Модель данных Исполнитель агента
/// * [Person] - Модель данных Человека
/// * [Phone] - Модель данных Телефон
/// * [Plot] - Модель данных Участок из каталога
/// * [PlotInfo] - Модель данных Информация об участке
/// * [Point] - Модель данных Геопозиционная точка
/// * [Polygon] - Модель данных Многоугольник на карте
/// * [Product] - Модель данных Товар, расширяет функционал модели Заказ-Наряда
/// * [PurchasePrice] - Модель данных Закупочная цена
/// * [Reclamation] - Модель данных Рекламация
/// * [Role] - Модель данных Роль пользователя
/// * [Route] - Модель данных маршрут
/// * [Section] - Модель данных Квартал кладбища
/// * [Service] - Модель данных Услуга, расширяет функционал модели Заказ-Наряда
/// * [ServiceNorm] - Модель данных Норма выполнения услуги
/// * [Sku] - Модель данных Артикул
/// * [SlackAnswer] - Модель данных Ответ Slack
/// * [SlackAttachment] - Модель данных Вложение Slack
/// * [SlackMessage] - Модель данных Сообщение Slack
/// * [StatusHistory] - Модель данных Изменение статуса объекта
/// * [User] - Модель данных Пользователь
/// * [UserGroup] - Модель данных Группа пользователей
/// * [WebSocketEvent] - Модель данных Веб-сокет событие
/// * [WorkCategory] - Модель данных Категория работ
/// * [WorkType] - Модель данных Вид работ
///
/// Все модели реализуют следующие методы:
/// * fromJson - конструктор класса из JSON
/// * toJson - возвращает json представление объекта
///
library openagent_data_models;

export 'src/attachment.dart';