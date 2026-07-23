.class public final Lcom/google/android/gms/internal/ads/zzbax;
.super Lcom/google/android/gms/internal/ads/zzbby;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzbbz;


# instance fields
.field private final zzi:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbax;->zzh:Lcom/google/android/gms/internal/ads/zzbbz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;IILandroid/content/Context;)V
    .locals 7

    .line 1
    const-string v3, "ovMA5nrmsfMPPc1p4911nPRjAFxE4I+3QWZwZMrn+uQ="

    const/16 v6, 0x1d

    const-string v2, "BJ0iIx7YCr6PyW+pyNNozQaB62BBi5nixFl6WJUaFdU4X2GlfptGfOLgFJ7ri6Ag"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbby;-><init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;II)V

    iput-object p7, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzi:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzi:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbax;->zzh:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbbz;->zza(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbby;->zze:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaya;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzawg;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawg;

    .line 11
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
