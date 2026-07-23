.class public final Lcom/google/android/gms/internal/ads/zzbsz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field static final zza:Lcom/google/android/gms/ads/internal/util/zzbc;

.field static final zzb:Lcom/google/android/gms/ads/internal/util/zzbc;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbsl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbsx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbsz;->zza:Lcom/google/android/gms/ads/internal/util/zzbc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbsy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbsz;->zzb:Lcom/google/android/gms/ads/internal/util/zzbc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfor;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsl;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbsz;->zza:Lcom/google/android/gms/ads/internal/util/zzbc;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbsz;->zzb:Lcom/google/android/gms/ads/internal/util/zzbc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbsl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbc;Lcom/google/android/gms/ads/internal/util/zzbc;Lcom/google/android/gms/internal/ads/zzfor;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsz;->zzc:Lcom/google/android/gms/internal/ads/zzbsl;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbss;Lcom/google/android/gms/internal/ads/zzbsr;)Lcom/google/android/gms/internal/ads/zzbsp;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsz;->zzc:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbtd;-><init>(Lcom/google/android/gms/internal/ads/zzbsl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbss;Lcom/google/android/gms/internal/ads/zzbsr;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbti;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsz;->zzc:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbti;-><init>(Lcom/google/android/gms/internal/ads/zzbsl;)V

    return-object v0
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsz;->zzc:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsl;->zzc()V

    return-void
.end method
