
use std::{env::args, env::var, process::{Command, exit}};


fn main() {
  let args: Vec<String> = args().collect();

  if args.len() < 2 {
    println!("Please pass a deeplink ({} git-clone://...)", args[0]);
    exit(1);
  }

  let deeplink = args[1].trim();

  if !deeplink.starts_with("git-clone://") {
    println!("Deeplink must start with 'git-clone://'.");
    exit(1);
  }

  let repo = deeplink.replacen("git-clone://", "", 1);

  let mut cmd = Command
                        ::new("git")
                        .args(["clone", &repo])
                        .current_dir(
                          match var("gc-dir") {
                            Ok(val) => val,
                            Err(e) => {
                              println!("Failed to get env variable 'gc-dir'. Is it set? ({}).", e);

                              loop {}
                            },
                          }
                        )
                        .spawn()
                        .unwrap();

  cmd.wait().unwrap();

  exit(0);
}
