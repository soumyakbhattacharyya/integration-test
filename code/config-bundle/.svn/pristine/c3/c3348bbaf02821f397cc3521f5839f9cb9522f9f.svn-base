package poc.rubiconred.fusioncloud.ci.util.core;

import java.util.HashSet;
import java.util.Set;

public class DefaultVertex implements Vertex<String> {
  private String label;
  private boolean visited = false;

  private Set<Edge> toEdges = new HashSet<>();
  private Set<Edge> fromEdges = new HashSet<>();

  private Set<Vertex> reachableSet = new HashSet<>();

  public Set<Edge> getFromEdges() {
    return fromEdges;
  }

  public void setFromEdges(Set<Edge> fromEdges) {
    this.fromEdges = fromEdges;
  }

  public Set<Edge> getToEdges() {
    return toEdges;
  }

  public void setToEdges(Edge edge) {
    toEdges.add(edge);
  }

  public void setFromEdges(Edge edge) {
    fromEdges.add(edge);
  }

  public boolean isVisited() {
    return visited;
  }

  public void setVisited(boolean visited) {
    this.visited = visited;
  }

  public DefaultVertex(String label) {
    this.label = label.toUpperCase();
  }

  public String getComparableProperty() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((label == null) ? 0 : label.hashCode());
    result = prime * result + (visited ? 1231 : 1237);
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    DefaultVertex other = (DefaultVertex) obj;
    if (label == null) {
      if (other.label != null)
        return false;
    } else if (!label.equals(other.label))
      return false;
    if (visited != other.visited)
      return false;
    return true;
  }

  @Override
  public void setReachable(Vertex v) {
    reachableSet.add(v);

  }

}