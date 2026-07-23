.class final synthetic Lcom/google/android/gms/internal/ads/zzdps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzclh;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdpu;

.field private final synthetic zzb:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdpu;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdps;->zza:Lcom/google/android/gms/internal/ads/zzdpu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdps;->zza:Lcom/google/android/gms/internal/ads/zzdpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzb:Ljava/util/Map;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdpu;->zzf(Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
