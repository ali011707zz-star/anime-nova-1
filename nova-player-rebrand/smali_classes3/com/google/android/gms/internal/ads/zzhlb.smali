.class public final Lcom/google/android/gms/internal/ads/zzhlb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhlg;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhye;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzian;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhqb;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhqy;

.field private final zzf:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhye;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zzc:Lcom/google/android/gms/internal/ads/zzian;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zze:Lcom/google/android/gms/internal/ads/zzhqy;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zzf:Ljava/lang/Integer;

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    if-ne p3, v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type raw should not have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p4, :cond_2

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhln;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlb;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhlb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhye;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)V

    return-object v0

    .line 3
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type different from raw should have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zzc:Lcom/google/android/gms/internal/ads/zzian;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhqb;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhqy;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zze:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object v0
.end method

.method public final zze()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zzf:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhye;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlb;->zza:Ljava/lang/String;

    return-object v0
.end method
