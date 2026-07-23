.class public final Lcom/google/ads/interactivemedia/v3/internal/zznf;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field private static volatile zzf:I = 0x1


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/tasks/Task;

.field private final zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Task;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzd:Lcom/google/android/gms/tasks/Task;

    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zze:Z

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/ads/interactivemedia/v3/internal/zznf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    if-eqz p2, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zznb;

    invoke-direct {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznb;-><init>(Landroid/content/Context;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zznd;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznd;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zznf;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Task;Z)V

    return-object v1
.end method

.method static zzg(I)V
    .locals 0

    .line 0
    sput p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzf:I

    return-void
.end method

.method private final zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    iget-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zze:Z

    if-nez p6, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzd:Lcom/google/android/gms/tasks/Task;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc:Ljava/util/concurrent/Executor;

    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/zzne;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzne;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzn;

    move-result-object v0

    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    invoke-virtual {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    sget p2, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzf:I

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zzg(I)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    if-eqz p4, :cond_1

    .line 4
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/zzpu;->zza(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zzd(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    :cond_1
    if-eqz p7, :cond_2

    .line 6
    invoke-virtual {v0, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zze(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    :cond_2
    if-eqz p5, :cond_3

    .line 7
    invoke-virtual {v0, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    :cond_3
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzd:Lcom/google/android/gms/tasks/Task;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/zznc;

    invoke-direct {p4, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zznc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzn;I)V

    .line 8
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzb(IJ)Lcom/google/android/gms/tasks/Task;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zze(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v7, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
