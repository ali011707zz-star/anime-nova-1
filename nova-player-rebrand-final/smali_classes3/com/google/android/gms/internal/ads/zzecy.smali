.class final synthetic Lcom/google/android/gms/internal/ads/zzecy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzecz;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbzu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzecz;Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecy;->zza:Lcom/google/android/gms/internal/ads/zzecz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecy;->zzb:Lcom/google/android/gms/internal/ads/zzbzu;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecy;->zza:Lcom/google/android/gms/internal/ads/zzecz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecy;->zzb:Lcom/google/android/gms/internal/ads/zzbzu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzecz;->zzb(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/android/gms/internal/ads/zzefg;

    move-result-object v0

    return-object v0
.end method
