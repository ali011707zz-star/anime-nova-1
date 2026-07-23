.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyv;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzan;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzan;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzs()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
