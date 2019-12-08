/* eslint-disable camelcase */
import numbers from '../helpers/uniqueNos';
import commonModel from './model';

export default class Talks {
  static processRequestData({
    speaker, topic, date, venue, capacity,
  }) {
    return [numbers.uniqueIds(), String(speaker), String(topic), String(date),
      String(venue), parseInt(capacity, 10)];
  }

  static ProcessResponseData({
    id, speaker, topic, date, venue, capacity,
  }) {
    return {
      id: parseInt(id, 10),
      speaker: String(speaker),
      topic: String(topic),
      date: String(date),
      venue: String(venue),
      capacity: parseInt(capacity, 10),
    };
  }

  static processResponseDataArray(array) {
    if (array) return commonModel.modifyArray(array, Talks.processResponseData);
    return array;
  }
}
