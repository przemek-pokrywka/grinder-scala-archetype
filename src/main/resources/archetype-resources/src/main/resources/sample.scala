import _root_.net.grinder.script.Grinder
import _root_.net.grinder.script.Test
import _root_.scala.Predef._
import net.grinder.script.Test

() => {
  val test = new Test(1, "test log")
  def log(msg:String) = {
    println(msg)
  }
  log("start process %s" format Grinder.grinder.getProcessNumber)
  () => {
    log("start thread %s" format Grinder.grinder.getThreadNumber)

    val $log = log _
    test.record($log)
    $log("test logger")
  }
}