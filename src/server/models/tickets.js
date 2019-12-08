/* eslint-disable camelcase */
import numbers from '../helpers/uniqueNos';
import commonModel from './model';

export default class Tickets {
  static processRequestData({ talkId, userId }) {
    return [numbers.uniqueIds(), parseInt(talkId, 10), parseInt(userId, 10)];
  }

  static processResponseData({
    id, full_name, email,
    speaker, topic, date, venue,
  }) {
    return {
      id: parseInt(id, 10),
      speaker: String(speaker),
      topic: String(topic),
      date: String(date),
      venue: String(venue),
      fullName: String(full_name),
      email: String(email),
    };
  }

  static processResponseDataArray(array) {
    if (array) return commonModel.modifyArray(array, Tickets.processResponseData);
    return array;
  }
}
