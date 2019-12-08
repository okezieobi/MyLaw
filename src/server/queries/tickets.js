export default class Tickets {
  static createOne() {
    return 'INSERT INTO tickets(id, talk_id, attendee_id) VALUES ($1, $2, $3)';
  }

  static getAll() {
    return 'SELECT *  FROM tickets';
  }
}
