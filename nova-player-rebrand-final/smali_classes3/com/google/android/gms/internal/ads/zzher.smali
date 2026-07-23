.class public final Lcom/google/android/gms/internal/ads/zzher;
.super Lcom/google/android/gms/internal/ads/zzhcg;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhev;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhye;

.field private final zzc:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhev;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhcg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzher;->zza:Lcom/google/android/gms/internal/ads/zzhev;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzher;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzher;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzhev;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzher;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhev;->zzc()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzheu;->zzb:Lcom/google/android/gms/internal/ads/zzheu;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkh;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhev;->zzc()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzheu;->zza:Lcom/google/android/gms/internal/ads/zzheu;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzher;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzher;-><init>(Lcom/google/android/gms/internal/ads/zzhev;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;)V

    return-object v1

    .line 3
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhev;->zzc()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown Variant: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhbp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zza:Lcom/google/android/gms/internal/ads/zzhev;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzc:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhye;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhev;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zza:Lcom/google/android/gms/internal/ads/zzhev;

    return-object v0
.end method
