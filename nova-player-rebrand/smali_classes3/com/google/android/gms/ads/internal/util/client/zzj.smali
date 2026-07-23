.class final synthetic Lcom/google/android/gms/ads/internal/util/client/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/client/zzk;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/util/Map;

.field private final synthetic zzd:[B


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/client/zzj;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/client/zzj;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/client/zzj;->zzc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/client/zzj;->zzd:[B

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/util/JsonWriter;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzj;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzj;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/client/zzj;->zzc:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/client/zzj;->zzd:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V

    return-void
.end method
