.class final synthetic Lcom/google/android/gms/internal/ads/zzedx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzedy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedx;->zza:Lcom/google/android/gms/internal/ads/zzedy;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedx;->zza:Lcom/google/android/gms/internal/ads/zzedy;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedy;->zzb(Lcom/google/android/gms/internal/ads/zzefg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
