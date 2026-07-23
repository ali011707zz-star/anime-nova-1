.class final synthetic Lcom/google/android/gms/internal/ads/zzhbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbg;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzhbk;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzhjr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhbk;Lcom/google/android/gms/internal/ads/zzhjr;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbj;->zza:Lcom/google/android/gms/internal/ads/zzhbk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhbj;->zzb:Lcom/google/android/gms/internal/ads/zzhjr;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhbi;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkb;->zza()Lcom/google/android/gms/internal/ads/zzhkb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhkb;->zzb()Lcom/google/android/gms/internal/ads/zzhjt;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbj;->zza:Lcom/google/android/gms/internal/ads/zzhbk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhbj;->zzb:Lcom/google/android/gms/internal/ads/zzhjr;

    const-string v2, "keyset_handle"

    const-string v3, "get_key"

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjt;->zza(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhjs;

    return-void
.end method
