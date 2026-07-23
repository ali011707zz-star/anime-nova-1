.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdye;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:[Landroid/util/Pair;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/String;[Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/internal/ads/zzdye;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zzc:[Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zzc:[Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/internal/ads/zzdye;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzf(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method
