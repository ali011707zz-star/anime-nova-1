package kotlinx.coroutines.internal;

import java.util.List;
import rc.n2;

/* compiled from: MainDispatcherFactory.kt */
/* loaded from: classes2.dex */
public interface MainDispatcherFactory {
    n2 createDispatcher(List<? extends MainDispatcherFactory> list);

    int getLoadPriority();

    String hintOnError();
}
