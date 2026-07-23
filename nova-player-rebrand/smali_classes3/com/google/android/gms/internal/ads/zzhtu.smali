.class public final Lcom/google/android/gms/internal/ads/zzhtu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhla;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhtu;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhtu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtu;->zza:Lcom/google/android/gms/internal/ads/zzhtu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtr;->zza:Lcom/google/android/gms/internal/ads/zzhtr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhjo;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtu;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtu;->zza:Lcom/google/android/gms/internal/ads/zzhtu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzc(Lcom/google/android/gms/internal/ads/zzhla;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtu;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Lcom/google/android/gms/internal/ads/zzhbs;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Lcom/google/android/gms/internal/ads/zzhbs;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Lcom/google/android/gms/internal/ads/zzhkz;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkp;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhjj;->zzd()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhbk;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhbk;->zze(I)Lcom/google/android/gms/internal/ads/zzhbi;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzb()Lcom/google/android/gms/internal/ads/zzhbb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhbb;->zza:Lcom/google/android/gms/internal/ads/zzhbb;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Lcom/google/android/gms/internal/ads/zzhbi;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhbs;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zza()Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzhuw;

    if-eqz v5, :cond_0

    .line 7
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhuw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhuw;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v4

    goto :goto_1

    .line 10
    :cond_0
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzhjo;

    if-eqz v5, :cond_1

    .line 8
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhjo;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhjo;->zzd()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v4

    .line 7
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzhts;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result v2

    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzhts;-><init>(Lcom/google/android/gms/internal/ads/zzhbs;I)V

    .line 10
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzhkp;->zza(Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhkp;

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhaz;->zza()Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Cannot get output prefix for key of class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with parameters "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhjr;->zza()Z

    move-result p3

    if-nez p3, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkb;->zza()Lcom/google/android/gms/internal/ads/zzhkb;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhkb;->zzb()Lcom/google/android/gms/internal/ads/zzhjt;

    move-result-object p3

    const-string v1, "public_key_verify"

    const-string v2, "verify"

    .line 16
    invoke-interface {p3, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjt;->zza(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhjs;

    move-result-object p1

    goto :goto_3

    .line 13
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhjv;->zza:Lcom/google/android/gms/internal/ads/zzhjs;

    .line 16
    :goto_3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhtt;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkp;->zzb()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzhtt;-><init>(Lcom/google/android/gms/internal/ads/zzhkr;Lcom/google/android/gms/internal/ads/zzhjs;)V

    return-object p2
.end method
