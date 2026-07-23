.class final Lcom/google/android/gms/internal/ads/zzftq;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzftr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzftr;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftq;->zza:Lcom/google/android/gms/internal/ads/zzftr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftq;->zza:Lcom/google/android/gms/internal/ads/zzftr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzftr;->zzf()Z

    move-result p2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzftr;->zzd(ZZ)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzftr;->zze(Z)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftq;->zza:Lcom/google/android/gms/internal/ads/zzftr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzftr;->zzf()Z

    move-result p2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzftr;->zzd(ZZ)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzftr;->zze(Z)V

    :cond_1
    return-void
.end method
