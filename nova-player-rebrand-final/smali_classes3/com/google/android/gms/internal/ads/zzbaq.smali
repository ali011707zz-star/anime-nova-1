.class final Lcom/google/android/gms/internal/ads/zzbaq;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zza:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zza:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbar;->zzd()V

    return-void
.end method
