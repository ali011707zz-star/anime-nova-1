.class final Lcom/google/android/gms/internal/ads/zzgpz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgqf;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpz;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpz;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqf;->zzi()Lcom/google/android/gms/internal/ads/zzgqg;

    move-result-object v1

    const-string v2, "LmdServiceConnectionManager.onServiceConnected(%s)"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgqg;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpy;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzgpy;-><init>(Lcom/google/android/gms/internal/ads/zzgpz;Landroid/os/IBinder;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpz;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqf;->zzi()Lcom/google/android/gms/internal/ads/zzgqg;

    move-result-object v1

    const-string v2, "LmdServiceConnectionManager.onServiceDisconnected(%s)"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgqg;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgpx;-><init>(Lcom/google/android/gms/internal/ads/zzgpz;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method
