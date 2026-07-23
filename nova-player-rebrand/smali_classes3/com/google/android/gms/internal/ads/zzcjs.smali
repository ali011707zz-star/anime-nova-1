.class final synthetic Lcom/google/android/gms/internal/ads/zzcjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjw;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zza:Lcom/google/android/gms/internal/ads/zzcjw;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zza:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzah()V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzv()V

    :cond_0
    return-void
.end method
