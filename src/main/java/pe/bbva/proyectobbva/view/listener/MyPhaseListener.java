package pe.bbva.proyectobbva.view.listener;

import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;
import javax.faces.event.PhaseListener;

public class MyPhaseListener
    implements PhaseListener {

    @Override
    public void afterPhase(PhaseEvent event) {
        System.out.println("Terminando la fase: " + event.getPhaseId().getName());
    }

    @Override
    public void beforePhase(PhaseEvent event) {
        System.out.println("Por empezar la fase: " + event.getPhaseId().getName());
    }

    @Override
    public PhaseId getPhaseId() {
        return PhaseId.ANY_PHASE;
    }
}
