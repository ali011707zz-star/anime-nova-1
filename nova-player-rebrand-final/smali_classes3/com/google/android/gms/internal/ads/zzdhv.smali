.class public final Lcom/google/android/gms/internal/ads/zzdhv;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zza:Lcom/google/android/gms/internal/ads/zzdhf;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdhv;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdhv;-><init>(Lcom/google/android/gms/internal/ads/zzdhf;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zza:Lcom/google/android/gms/internal/ads/zzdhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhf;->zzk()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
