.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

.field private final synthetic zzb:Ljava/util/List;

.field private final synthetic zzc:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzai;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzai;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzai;->zzc:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzai;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzai;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzai;->zzc:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzo(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
