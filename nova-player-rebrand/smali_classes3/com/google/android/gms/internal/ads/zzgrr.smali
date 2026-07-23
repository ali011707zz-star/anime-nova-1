.class public final Lcom/google/android/gms/internal/ads/zzgrr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgrq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgrq;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqp;->zza:Lcom/google/android/gms/internal/ads/zzgqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrr;->zza:Lcom/google/android/gms/internal/ads/zzgrq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgqq;)Lcom/google/android/gms/internal/ads/zzgrr;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgrr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgro;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgro;-><init>(Lcom/google/android/gms/internal/ads/zzgqq;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgrr;-><init>(Lcom/google/android/gms/internal/ads/zzgrq;)V

    return-object v0
.end method

.method public static zzb(Ljava/util/regex/Pattern;)Lcom/google/android/gms/internal/ads/zzgrr;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgqv;-><init>(Ljava/util/regex/Pattern;)V

    const-string p0, ""

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgqs;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzgqr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgqu;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgqu;->zza:Ljava/util/regex/Matcher;

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    .line 4
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgrr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgrm;-><init>(Lcom/google/android/gms/internal/ads/zzgqs;)V

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgrr;-><init>(Lcom/google/android/gms/internal/ads/zzgrq;)V

    return-object p0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzgrr;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgrr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgrn;

    const/16 v1, 0xfa0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgrn;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgrr;-><init>(Lcom/google/android/gms/internal/ads/zzgrq;)V

    return-object p0
.end method

.method private final zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrr;->zza:Lcom/google/android/gms/internal/ads/zzgrq;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgrq;->zza(Lcom/google/android/gms/internal/ads/zzgrr;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgrl;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgrl;-><init>(Lcom/google/android/gms/internal/ads/zzgrr;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final zze(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgrr;->zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgrr;->zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
