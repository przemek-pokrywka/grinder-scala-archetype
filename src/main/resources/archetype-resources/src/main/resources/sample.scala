import net.grinder.script.Test

def log(msg:String) = {
  println(msg)
}

val test = new Test(1, "test log")

() => {
  () => {
    val $log = log _
    test.record($log)
    $log("test logger")
  }
}