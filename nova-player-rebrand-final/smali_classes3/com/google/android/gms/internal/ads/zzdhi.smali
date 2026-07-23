.class public final Lcom/google/android/gms/internal/ads/zzdhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdhf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdhf;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zza:Lcom/google/android/gms/internal/ads/zzdhf;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdhi;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdhi;-><init>(Lcom/google/android/gms/internal/ads/zzdhf;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdhf;)Ljava/util/Set;
    .locals 0

    .line 1
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zza:Lcom/google/android/gms/internal/ads/zzdhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhi;->zzc(Lcom/google/android/gms/internal/ads/zzdhf;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
