export default class Talks {
  static createOne() {
    return 'INSERT INTO talks(id, speaker, topic, date, venue, capacity) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *';
  }

  static getAll() {
    return 'SELECT * FROM talks';
  }
}
