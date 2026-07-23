.class public final Lcom/google/android/gms/internal/ads/zzdaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zze:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdaz;
    .locals 6

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdaz;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdaz;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzday;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcww;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcww;->zza()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwx;->zza()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzekl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwy;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwy;->zza()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object v5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaz;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzday;

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzday;-><init>(Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzekl;Lcom/google/android/gms/internal/ads/zzfiu;Ljava/lang/String;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdaz;->zza()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v0

    return-object v0
.end method
