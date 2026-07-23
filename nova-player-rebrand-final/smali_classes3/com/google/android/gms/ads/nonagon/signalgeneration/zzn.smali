.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

.field private final synthetic zzb:Ljava/lang/Object;

.field private final synthetic zzc:Landroid/util/Pair;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;Ljava/lang/Object;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzn;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzn;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzn;->zzc:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzn;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzn;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzn;->zzc:Landroid/util/Pair;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->zzd(Ljava/lang/Object;Landroid/util/Pair;)V

    return-void
.end method
