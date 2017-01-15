extern crate chrono;
use chrono::*;

pub fn after(dt: DateTime<UTC>) -> DateTime<UTC> {
    dt + Duration::seconds(1000000000)
}
