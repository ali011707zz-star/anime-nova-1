.class public final Lcom/google/android/gms/internal/ads/zzegt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbss;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzegz;

.field public final zzb:Lorg/json/JSONObject;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzbzw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzegt;->zzd:Lcom/google/android/gms/internal/ads/zzbss;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzegz;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbzw;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegt;->zza:Lcom/google/android/gms/internal/ads/zzegz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzb:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzc:Lcom/google/android/gms/internal/ads/zzbzw;

    return-void
.end method
