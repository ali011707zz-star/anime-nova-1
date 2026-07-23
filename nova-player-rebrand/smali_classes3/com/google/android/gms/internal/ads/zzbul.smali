.class public final Lcom/google/android/gms/internal/ads/zzbul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field private final zza:Ljava/util/Date;

.field private final zzb:I

.field private final zzc:Ljava/util/Set;

.field private final zzd:Z

.field private final zze:Landroid/location/Location;

.field private final zzf:I

.field private final zzg:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbul;->zza:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzc:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbul;->zze:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzd:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzf:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzg:Z

    return-void
.end method


# virtual methods
.method public final getKeywords()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzc:Ljava/util/Set;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzg:Z

    return v0
.end method

.method public final isTesting()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzd:Z

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzf:I

    return v0
.end method
