.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzmw;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzmy;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:I

.field private final synthetic zzd:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzmy;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzmy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmw;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmw;->zzc:I

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmw;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzmy;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzmz;

    .line 1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzmv;

    invoke-direct {v1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzmv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzmy;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzmm;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzmn;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmw;->zzb:Ljava/lang/String;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmw;->zzc:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmw;->zzd:Ljava/lang/String;

    invoke-direct {p2, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzmn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    invoke-interface {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzmm;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzmn;Lcom/google/ads/interactivemedia/v3/internal/zzmh;)V

    return-void
.end method
