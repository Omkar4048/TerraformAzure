using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    public Rigidbody rb;
    // This is a reference to the Rigidbody component called "rb"
    public float forwardForce = 2000f;
    public float sidewaysforce = 500f;
	// We marked this as "Fixed"Update because we are using it to mess with physics.
	void FixedUpdate ()
    {
        rb.AddForce(0, 0, forwardForce * Time.deltaTime);  // forward force on z-axis

        if ( Input.GetKey("d"))
        {
            rb.AddForce(sidewaysforce * Time.deltaTime, 0, 0,ForceMode.VelocityChange);                //Only execute if condition is met
        }
        if (Input.GetKey("a"))
        {
            rb.AddForce(-sidewaysforce * Time.deltaTime, 0, 0,ForceMode.VelocityChange);                //Only execute if condition is met
        }

        if (rb.position.y < -1f)
        {
            FindObjectOfType<GameManager>().EndGame();
        }
    }
}
