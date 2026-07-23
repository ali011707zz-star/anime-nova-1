.class public final Lcom/google/android/gms/internal/ads/zzarp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzarn;-><init>(Lcom/google/android/gms/internal/ads/zzarp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarp;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzary;Lcom/google/android/gms/internal/ads/zzase;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zzp()V

    const-string v0, "post-response"

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaro;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaro;-><init>(Lcom/google/android/gms/internal/ads/zzary;Lcom/google/android/gms/internal/ads/zzase;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarp;->zza:Ljava/util/concurrent/Executor;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzarn;->zza:Landroid/os/Handler;

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzary;Lcom/google/android/gms/internal/ads/zzash;)V
    .locals 2

    .line 1
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzase;->zzb(Lcom/google/android/gms/internal/ads/zzash;)Lcom/google/android/gms/internal/ads/zzase;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaro;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaro;-><init>(Lcom/google/android/gms/internal/ads/zzary;Lcom/google/android/gms/internal/ads/zzase;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarp;->zza:Ljava/util/concurrent/Executor;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzarn;->zza:Landroid/os/Handler;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
