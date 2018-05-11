
using UnityEngine;

public class PlayerMovement : MonoBehaviour { 
    public Rigidbody rb;

    public float forwardForce = 1000f;
    public float accForce = 800f;
    public float sideForce = 1000f;
    public float breakForce = -1000f;
    public float jumpForce = 200f;

    // Update is called once per frame
    void FixedUpdate () {
        //  rb.AddForce(0, 0, forwardForce * Time.deltaTime);
        rb.AddForce(0, -980*Time.deltaTime, 0);
        move();
    }

   void move()
    {
        if (Input.GetKey("w"))
        {
            rb.AddForce(0, 0, accForce * Time.deltaTime);
            Debug.Log("forward!");
        }

        if (Input.GetKey("a"))
        {
            rb.AddForce(-sideForce * Time.deltaTime, 0, 0);
            Debug.Log("right!");
        }

        if (Input.GetKey("s"))
        {
            rb.AddForce(0, 0, breakForce * Time.deltaTime);
            Debug.Log("break!");
        }

        if (Input.GetKey("d"))
        {
            rb.AddForce(sideForce * Time.deltaTime, 0, 0);
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            jump();
        }
    }

    void jump()
    {
        rb.AddForce(0, jumpForce, 0);
    }
}
