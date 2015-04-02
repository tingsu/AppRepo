package course.examples.instrument;

/**
 * Listen for an Activity to finish and invokes {@link #onActivityFinished()} when this happens.
 * 
 * @author diego
 *
 */
public interface FinishListener {

        /**
         * Invoked when the Activity finishes.
         */
        void onActivityFinished();

}