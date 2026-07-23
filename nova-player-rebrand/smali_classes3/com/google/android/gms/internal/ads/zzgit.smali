.class public final Lcom/google/android/gms/internal/ads/zzgit;
.super Lcom/google/android/gms/internal/ads/zzfvh;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdh;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgdh;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfvh;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Task;Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgit;->zzb:Lcom/google/android/gms/internal/ads/zzgdh;

    return-void
.end method

.method private static zzh()Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zzb(IJ)Lcom/google/android/gms/tasks/Task;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zzb:Lcom/google/android/gms/internal/ads/zzgdh;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgdh;->zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgit;->zzh()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zzb:Lcom/google/android/gms/internal/ads/zzgdh;

    const/4 v5, 0x0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgdh;->zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgit;->zzh()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zze(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zzb:Lcom/google/android/gms/internal/ads/zzgdh;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move v1, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgdh;->zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgit;->zzh()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
