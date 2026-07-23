.class public final Lcom/google/android/gms/internal/ads/zzdhg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdhf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdhf;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhg;->zza:Lcom/google/android/gms/internal/ads/zzdhf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhg;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdhf;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdhg;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdhg;-><init>(Lcom/google/android/gms/internal/ads/zzdhf;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhg;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zziks;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziks;->zzc()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhg;->zza:Lcom/google/android/gms/internal/ads/zzdhf;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdhf;->zzp(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdbh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
