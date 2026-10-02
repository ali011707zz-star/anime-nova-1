package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-tasks@@17.2.1 */
/* loaded from: classes.dex */
public final class Tasks {
    private Tasks() {
    }

    @RecentlyNonNull
    public static <TResult> TResult await(@RecentlyNonNull Task<TResult> task) throws ExecutionException, InterruptedException {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotNull(task, "Task must not be null");
        if (task.isComplete()) {
            return (TResult) zza(task);
        }
        zzaa zzaaVar = new zzaa(null);
        zzb(task, zzaaVar);
        zzaaVar.zza();
        return (TResult) zza(task);
    }

    @Deprecated
    public static <TResult> Task<TResult> call(@RecentlyNonNull Callable<TResult> callable) {
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    public static <TResult> Task<TResult> forCanceled() {
        zzw zzwVar = new zzw();
        zzwVar.zze();
        return zzwVar;
    }

    public static <TResult> Task<TResult> forException(@RecentlyNonNull Exception exc) {
        zzw zzwVar = new zzw();
        zzwVar.zzc(exc);
        return zzwVar;
    }

    public static <TResult> Task<TResult> forResult(@RecentlyNonNull TResult tresult) {
        zzw zzwVar = new zzw();
        zzwVar.zza(tresult);
        return zzwVar;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection != null && !collection.isEmpty()) {
            Iterator<? extends Task<?>> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new NullPointerException("null tasks are not accepted");
                }
            }
            zzw zzwVar = new zzw();
            zzac zzacVar = new zzac(collection.size(), zzwVar);
            Iterator<? extends Task<?>> it3 = collection.iterator();
            while (it3.hasNext()) {
                zzb(it3.next(), zzacVar);
            }
            return zzwVar;
        }
        return forResult(null);
    }

    public static Task<List<Task<?>>> whenAllComplete(Collection<? extends Task<?>> collection) {
        if (collection != null && !collection.isEmpty()) {
            return whenAll(collection).continueWithTask(TaskExecutors.MAIN_THREAD, new zzz(collection));
        }
        return forResult(Collections.emptyList());
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Collection<? extends Task> collection) {
        if (collection != null && !collection.isEmpty()) {
            return (Task<List<TResult>>) whenAll((Collection<? extends Task<?>>) collection).continueWith(TaskExecutors.MAIN_THREAD, new zzy(collection));
        }
        return forResult(Collections.emptyList());
    }

    private static <TResult> TResult zza(Task<TResult> task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.getException());
    }

    private static <T> void zzb(Task<T> task, zzab<? super T> zzabVar) {
        Executor executor = TaskExecutors.zza;
        task.addOnSuccessListener(executor, zzabVar);
        task.addOnFailureListener(executor, zzabVar);
        task.addOnCanceledListener(executor, zzabVar);
    }

    @Deprecated
    public static <TResult> Task<TResult> call(@RecentlyNonNull Executor executor, @RecentlyNonNull Callable<TResult> callable) {
        Preconditions.checkNotNull(executor, "Executor must not be null");
        Preconditions.checkNotNull(callable, "Callback must not be null");
        zzw zzwVar = new zzw();
        executor.execute(new zzx(zzwVar, callable));
        return zzwVar;
    }

    public static Task<List<Task<?>>> whenAllComplete(Task<?>... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllComplete(Arrays.asList(taskArr));
        }
        return forResult(Collections.emptyList());
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Task... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllSuccess(Arrays.asList(taskArr));
        }
        return forResult(Collections.emptyList());
    }

    @RecentlyNonNull
    public static <TResult> TResult await(@RecentlyNonNull Task<TResult> task, long j10, @RecentlyNonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotNull(task, "Task must not be null");
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        if (task.isComplete()) {
            return (TResult) zza(task);
        }
        zzaa zzaaVar = new zzaa(null);
        zzb(task, zzaaVar);
        if (zzaaVar.zzb(j10, timeUnit)) {
            return (TResult) zza(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static Task<Void> whenAll(Task<?>... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAll(Arrays.asList(taskArr));
        }
        return forResult(null);
    }
}
