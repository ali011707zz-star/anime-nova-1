.class public final Lcom/google/android/gms/internal/ads/zzeib;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeib;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzeib;
    .locals 6

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeib;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeib;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzehz;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zza()Landroid/content/Context;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdak;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdak;->zza()Lcom/google/android/gms/internal/ads/zzdaj;

    move-result-object v3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzehr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeho;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeho;->zza()Lcom/google/android/gms/internal/ads/zzehn;

    move-result-object v5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmd;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmd;->zza()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v6

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzehz;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzehz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdaj;Lcom/google/android/gms/internal/ads/zzehr;Lcom/google/android/gms/internal/ads/zzehn;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeib;->zza()Lcom/google/android/gms/internal/ads/zzehz;

    move-result-object v0

    return-object v0
.end method
