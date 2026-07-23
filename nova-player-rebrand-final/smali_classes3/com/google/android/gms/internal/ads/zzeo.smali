.class final Lcom/google/android/gms/internal/ads/zzeo;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzep;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzep;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzep;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(Lcom/google/android/gms/internal/ads/zzeo;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzep;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzep;->zzf()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
