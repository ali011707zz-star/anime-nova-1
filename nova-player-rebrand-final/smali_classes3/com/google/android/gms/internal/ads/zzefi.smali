.class final synthetic Lcom/google/android/gms/internal/ads/zzefi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzefh;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeew;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeew;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefi;->zza:Lcom/google/android/gms/internal/ads/zzeew;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zza:Lcom/google/android/gms/internal/ads/zzeew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeew;->zza(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
