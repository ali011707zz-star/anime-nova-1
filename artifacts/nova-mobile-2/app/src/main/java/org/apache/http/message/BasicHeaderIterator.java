package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;

/* loaded from: classes2.dex */
public class BasicHeaderIterator implements HeaderIterator {
    public final Header[] allHeaders;
    public int currentIndex;
    public String headerName;

    public BasicHeaderIterator(Header[] headerArr, String str) {
        if (headerArr != null) {
            this.allHeaders = headerArr;
            this.headerName = str;
            this.currentIndex = findNext(-1);
            return;
        }
        throw new IllegalArgumentException("Header array must not be null.");
    }

    public boolean filterHeader(int i10) {
        String str = this.headerName;
        return str == null || str.equalsIgnoreCase(this.allHeaders[i10].getName());
    }

    public int findNext(int i10) {
        if (i10 < -1) {
            return -1;
        }
        int length = this.allHeaders.length - 1;
        boolean z10 = false;
        while (!z10 && i10 < length) {
            i10++;
            z10 = filterHeader(i10);
        }
        if (z10) {
            return i10;
        }
        return -1;
    }

    @Override // org.apache.http.HeaderIterator, java.util.Iterator
    public boolean hasNext() {
        return this.currentIndex >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() throws NoSuchElementException {
        return nextHeader();
    }

    @Override // org.apache.http.HeaderIterator
    public Header nextHeader() throws NoSuchElementException {
        int i10 = this.currentIndex;
        if (i10 >= 0) {
            this.currentIndex = findNext(i10);
            return this.allHeaders[i10];
        }
        throw new NoSuchElementException("Iteration already finished.");
    }

    @Override // java.util.Iterator
    public void remove() throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Removing headers is not supported.");
    }
}
