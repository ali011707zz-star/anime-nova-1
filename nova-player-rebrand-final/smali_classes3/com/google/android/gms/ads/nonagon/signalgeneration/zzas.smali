.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

.field private final synthetic zzb:[Lcom/google/android/gms/internal/ads/zzdtk;

.field private final synthetic zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;[Lcom/google/android/gms/internal/ads/zzdtk;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzas;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzas;->zzb:[Lcom/google/android/gms/internal/ads/zzdtk;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzas;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzas;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzas;->zzb:[Lcom/google/android/gms/internal/ads/zzdtk;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzas;->zzc:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtk;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzu([Lcom/google/android/gms/internal/ads/zzdtk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdtk;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
