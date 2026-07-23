.class final synthetic Lcom/google/android/gms/internal/ads/zzfcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfcw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfcw;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcv;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcv;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfcx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzb:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfcx;-><init>(Ljava/util/List;)V

    return-object v1
.end method
